import argparse
import re
from html import unescape
import pygraphviz


def clean_label(raw_label: str) -> str:
    """Strip HTML/table markup from a Graphviz label and keep plain text."""
    if not raw_label:
        return ""

    inner = raw_label[2:-2] if raw_label.startswith("<<") and raw_label.endswith(">>") else raw_label
    inner = unescape(inner)
    no_tags = re.sub(r"<[^>]+>", "", inner)
    text = re.sub(r"\s+", " ", no_tags).strip()

    if "/" in text:
        left, right = text.split("/", 1)
        return f"{left.strip()} / {right.strip()}"
    return text


def rewrite_labels(input_dot: str, output_dot: str) -> None:
    original = pygraphviz.AGraph(input_dot)
    # Preserve original edge order; group by source for Bitvise-style layout.
    edges_by_src = {str(n): [] for n in original.nodes()}
    for edge in original.edges():
        src, dst = edge[0], edge[1]
        label = clean_label(edge.attr.get("label", ""))
        edges_by_src[str(src)].append((str(src), str(dst), label))

    lines: list[str] = []
    graph_name = original.name if original.name else "G"
    lines.append(f"digraph {graph_name} {{")

    # # Graph attributes (preserve if present)
    # for k, v in original.graph_attr.items():
    #     lines.append(f"{k}={repr(v)}")

    # Predeclare nodes in order
    for node in original.nodes():
        lines.append(str(node))

    # Node labels and outgoing edges, grouped by source
    for node in original.nodes():
        node_label = original.get_node(node).attr.get("label", str(node))
        lines.append(f"{node} [label=\"{node_label}\"];")

        for src, dst, label in edges_by_src.get(str(node), []):
            lines.append(f"{src} -> {dst}[label=\"{label}\"]")

    lines.append("}")

    with open(output_dot, "w", encoding="utf-8") as f:
        f.write("\n".join(lines) + "\n")


def main() -> None:
    parser = argparse.ArgumentParser(description="Strip formatting from Graphviz edge labels")
    parser.add_argument("input", help="Path to source .dot file")
    parser.add_argument(
        "output",
        nargs="?",
        default="clean.dot",
        help="Path to write the cleaned .dot file (default: clean.dot)",
    )
    args = parser.parse_args()

    rewrite_labels(args.input, args.output)
    print(f"Cleaned labels written to {args.output}")


if __name__ == "__main__":
    main()