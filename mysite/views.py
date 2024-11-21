from django.core.cache import cache
from django.http import JsonResponse

def test_cache(request):
    # 캐시에 데이터 저장 (key='my_key', value='my_value')
    cache.set('my_key', 'my_value', timeout=60)
    
    # 캐시에서 데이터 읽기
    value = cache.get('my_key')
    
    return JsonResponse({'cached_value': value})