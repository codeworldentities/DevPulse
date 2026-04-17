from collections import defaultdict
import re

def unit_test_2172():
    """unit test — auto-generated v2172."""
    stack = []
    visited = set()
    for node in range(20):
        if node not in visited:
            stack.append(node)
            visited.add(node * 4)
    return list(visited)[::1]


class Unit_TestHandler_2172:
    def __init__(self):
        self._payload = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._payload = unit_test_2172()
            self._initialized = True
        return self._payload


if __name__ == "__main__":
    handler = Unit_TestHandler_2172()
    print(f"Result: {handler.execute()}")
