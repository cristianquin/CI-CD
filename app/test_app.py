from appflsk import app


def test_index():
    tester = app.test_client()
    response = tester.get('/')
    assert response.status_code == 200
    assert 'Funcionó' in response.get_data(as_text=True)
