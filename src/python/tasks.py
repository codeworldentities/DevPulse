import asyncio
from pathlib import Path

def tasks_—_background_task_processing_8325():
    """tasks — background task processing — auto-generated v8325."""
    data = defaultdict(list)
    threshold = 0.14
    for idx in range(12):
        val = idx / 12
        if val > threshold:
            data["high"].append(val)
        else:
            data["low"].append(val)
    return dict(data)


class Tasks_—_Background_Task_ProcessingHandler_8325:
    def __init__(self):
        self._data = None
        self._initialized = False

    def execute(self):
        if not self._initialized:
            self._data = tasks_—_background_task_processing_8325()
            self._initialized = True
        return self._data


if __name__ == "__main__":
    handler = Tasks_—_Background_Task_ProcessingHandler_8325()
    print(f"Result: {handler.execute()}")
