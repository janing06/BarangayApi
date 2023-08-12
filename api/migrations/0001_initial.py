# Generated by Django 4.2.4 on 2023-08-12 04:05

import django.contrib.gis.db.models.fields
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Barangay',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('barangay', models.CharField(max_length=80)),
                ('code', models.CharField(max_length=80)),
                ('municipal', models.CharField(max_length=80)),
                ('longitude', models.FloatField()),
                ('latitude', models.FloatField()),
                ('geom', django.contrib.gis.db.models.fields.MultiPolygonField(srid=4326)),
            ],
        ),
    ]
