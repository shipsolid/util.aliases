from collections import namedtuple

Response = namedtuple("Response", "success data error")

def fetch_data():
    # Simulate success
    return Response(success=True, data="payload", error=None)

response = fetch_data()
if response.success:
    print("Data from the response:", response.data)
else:
    print("Error:", response.error)