from django.shortcuts import render
from .serializers import BarangaySerializer
from rest_framework.views import APIView
from .models import Barangay
from rest_framework.response import Response
from django.shortcuts import get_object_or_404
from rest_framework import viewsets
import json

class BarangayViewSet(viewsets.ModelViewSet):
    queryset = Barangay.objects.all().order_by('barangay')
    serializer_class = BarangaySerializer


def index(request):
    barangays = Barangay.objects.all().order_by('barangay')
    serializer = BarangaySerializer(barangays, many=True)
    return render(request, 'api/index.html',{'data': json.dumps(serializer.data)})
 
class SingleBarangayGeoJSONView(APIView):
    def get(self, request, code):
        barangay = get_object_or_404(Barangay, code=code)
        serializer = BarangaySerializer(barangay)
        return Response(serializer.data)


class AllBarangayGeoJSONView(APIView):
    def get(self, request):
        barangays = Barangay.objects.order_by('barangay')
        serializer = BarangaySerializer(barangays, many=True)
        return Response(serializer.data)
    
    

   

          
