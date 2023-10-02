from dataclasses import dataclass
from datetime import datetime


@dataclass
class TestVariant:
    users: int


@dataclass
class Test:
    name: str
    variants: [TestVariant]


@dataclass
class Endpoint:
    test_name: str
    users: int

    method: str
    url: str
    requests_count: int
    requests_per_second: float
    avg_time: float
    min_time: float
    max_time: float
    avg_content_size: float

    created_at: datetime
