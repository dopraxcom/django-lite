from django.shortcuts import render

# Create your views here.
def default_index(request):
    context = {
        
        }
    return render(request, 'default_index.html', context)