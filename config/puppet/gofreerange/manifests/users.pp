class gofreerange {
  class users {
    include freerange

    freerange::user {"chris@seagul.co.uk":
      user => "chrisroos",
      key => "AAAAB3NzaC1yc2EAAAABIwAAAQEA50zO1QYSl2lHaKyCshz0ph+H2t1SkUXPnDwn3Dn6ldQ6j46o+idhhN5+b8OnrmFXCAYhMDvaQnE/G6TpHal4x8Fq3W2ELkgkNDLQ5J8izphKHjsM+WyTrjskFViH4cNgpYkWrdUz3Yhxlx0EGqZZi57T/3Gf4hS/NspwYxhOWk5J+TptWAJQCI4sJR+Jw3TdTBqvkly8VX2dQYddPABnyDb0Ih8JEcXjngtGLsRi3N2DIq6YWvb2a3gYxpgkW7mgUOBFbOb9LMDmM2ILhYv5E8jhYbjsonH8f0NMxlWSQMIy2hoagm/SiRifyob3hA0HBqRDOJstwJkoEMkyv9z9aQ=="
    }

    freerange::user {"tom@popdog.net":
      user => "tomw",
      key => "AAAAB3NzaC1yc2EAAAABIwAAAQEA7wy/hGcJZ1PFRCjs0UKIrALs+zm0d2+fVtHJqCdWTOOOaP3NRUEsi5Eb60vzuTkgEilcOhIT9jMUMCUzKHbqlG6EMhXFOsyaNDV30oyj9pHYeqUDCY52vb9GXTejFEFAy4bnlG+5N//B8nXiGuOjTWJdXuDhhvFSO1Cqp9doDQLfgnfP8pUmquVHYVN7aOIjIMlmnhXedLOAWhmfNaaA6IrbsqEqRAqe+YqRtB25Kqh4UCd8Fjd7dh98W32TrLtlh8qtb8e7U3W+lskpnbDubcptQKAdzbKDFpdpPQKGMtrCnPx3rnddZWH2dV36smm+IwwUbrjH3U/1F2ci8aCgFQ=="
    }

    freerange::user {"james@lazyatom.com":
      user => "james",
      key => "AAAAB3NzaC1yc2EAAAABIwAAAQEA2hsOv1phLQ6OsNMSLWMoXmV2q4qcaOZy6EDsX7+89WX1BQ/iCRckdvwhCc+KTYbIcCZA91JFhXtVwQ3tKDrJbdSYwTg3Y2a4dakbK87H63s7z5oIuM1KWXHGRV4RQGwqIgxNqkEwRUdbYkZ+Ct8X2W7bLTBkLA3zhOT7etxyg8WXRjGUdP6rpnAoJzVbnrn36SDKkWs+6yp5aNDhU4929En/8logAgBD3ByMAg9f/ndbVNA34ZuLWp6LYo2lZDrNxuAE4caseht+ovBWGiq84MmIMpVMuF0HuNNSh24CA8cF2DB7r+vYcmjHBz4VY7u4wkXBsPIbOjVwXVls5F7Hnw=="
    }

    freerange::user {"james@floehopper.org":
      user => "jamesmead",
      key => "AAAAB3NzaC1yc2EAAAABIwAAAQEA2sgFVWa22MUpTC3d7rn04qhzLRc5CwwuBLGp3dm3Yg5mFpq2dQLMlWZN/uK4SK1DC8fEDCbnaq4iGUk1VAUt6tN8UxrR9P5yrxSWTLLwanpNb/G6I4sRbzJaowhEchPLvoTWpege6hX6xGzHJRspODxT+Dhhrx8RIT5ZU19IlMEzSpYXNtBk5P+poj3AwC4gBwGhtC/B/YltM6Cxpi6Tp1Jb7vilRW08GU8EkmiBhs45QF2wWV2+OMinW7QIww7c6NdrbIDWw9+FBGOUHRlyPpXMCuz8B1zgplzoFLlO13r2fPDx2pB8WodMkZie28s1tfLB4gKIHVWbf9YYyLQeTQ=="
    }
  }
}