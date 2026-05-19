def run(input_data, target):
    # register_record(**kwargs) is available automatically — call it inside
    # your loop to accumulate per-case evidence in evidence_full.json.gz.b64.
    # Example:
    #   for n in range(1, upper + 1):
    #       value = compute(n)
    #       register_record(n=n, value=value, verdict=(value == n))
    return {
        "evidence": {
            "input_data": input_data,
            "target": target
        },
        "sufficient": False,
        "summary": "Replace this template with a real computation",
        "records": []
    }
