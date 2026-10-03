#!/usr/bin/env python3
"""
统计当前目录下所有特定前缀子文件夹中 timer.txt 的数据。
timer.txt 格式（4行，含标签）：
  <label>: <num1> seconds
  <label>: <num2> seconds
  <label>: <num3>
  <label>: <num4>

四个统计指标：
  - 数字1：第1行的数值
  - 数字2：第2行的数值
  - 数字3：第3行的数值
  - 数字4：第4行的数值

用法：
  python calculate.py [前缀]
  前缀缺省为空（匹配所有子文件夹）
"""

import os
import sys
import re


def extract_number(line: str) -> float:
    """从行中提取第一个浮点数或整数。"""
    match = re.search(r"[\d]+(?:\.\d+)?(?:[eE][+-]?\d+)?", line)
    if match:
        return float(match.group())
    raise ValueError(f"无法从行中提取数字: {line!r}")


def parse_timer(filepath: str):
    """解析 timer.txt，返回四个数字 (n1, n2, n3, n4)。"""
    with open(filepath, "r") as f:
        lines = [l.strip() for l in f.readlines() if l.strip()]
    if len(lines) != 4:
        raise ValueError(f"期望4行，实际{len(lines)}行: {filepath}")
    n1 = extract_number(lines[0])
    n2 = extract_number(lines[1])
    n3 = extract_number(lines[2])
    n4 = extract_number(lines[3])
    return n1, n2, n3, n4


def stats(values):
    """返回 (最小值, 最大值, 平均值)。"""
    return min(values), max(values), sum(values) / len(values)


def main():
    prefix = sys.argv[1] if len(sys.argv) > 1 else ""
    cwd = os.getcwd()

    # 找出所有匹配前缀的子文件夹
    subdirs = sorted([
        d for d in os.listdir(cwd)
        if os.path.isdir(os.path.join(cwd, d)) and d.startswith(prefix)
    ])

    if not subdirs:
        print(f"未找到前缀为 '{prefix}' 的子文件夹。")
        sys.exit(1)

    data = []
    errors = []
    for d in subdirs:
        timer_path = os.path.join(cwd, d, "timer.txt")
        if not os.path.isfile(timer_path):
            errors.append(f"  [跳过] {d}: 未找到 timer.txt")
            continue
        try:
            metrics = parse_timer(timer_path)
            data.append((d, metrics))
        except Exception as e:
            errors.append(f"  [错误] {d}: {e}")

    if errors:
        print("解析警告：")
        for e in errors:
            print(e)
        print()

    if not data:
        print("没有成功解析的 timer.txt 文件。")
        sys.exit(1)

    print(f"成功读取 {len(data)} 个 timer.txt（前缀='{prefix}'）\n")

    # 打印各文件详情
    print(f"{'文件夹':<40} {'数字1':>20} {'数字2':>25} {'数字3':>12} {'数字4':>12}")
    print("-" * 100)
    for d, (v1, v2, v3, v4) in data:
        print(f"{d:<40} {v1:>20.6f} {v2:>25.6f} {v3:>12.0f} {v4:>12.0f}")
    print()

    # 提取三列
    col1 = [v[1][0] for v in data]
    col2 = [v[1][1] for v in data]
    col3 = [v[1][2] for v in data]
    col4 = [v[1][3] for v in data]

    print("统计结果：")
    print(f"{'指标':<30} {'最小值':>20} {'最大值':>20} {'平均值':>20}")
    print("-" * 92)
    for label, col, fmt in [
        ("数字1（第1行）", col1, ".6f"),
        ("数字2（第2行）", col2, ".6f"),
        ("数字3（第3行）", col3, ".2f"),
        ("数字4（第4行）", col4, ".2f"),
    ]:
        mn, mx, avg = stats(col)
        print(f"{label:<30} {mn:>20{fmt}} {mx:>20{fmt}} {avg:>20{fmt}}")


if __name__ == "__main__":
    main()