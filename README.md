### READ ME

Ejercicio 1:

1.1. El monto total a facutrar por el proveedor por sms es: $ 140757.0
1.2 El data set se encuentra en la carpeta OUTPUT.
3.3 El histograma se encuetra en la carpeta histograma

Ejercicio 2:

1.a&b.
    Para optimizar los procesos productivos, buscaría ejecutarlos durante períodos de menor carga en el sistema, como por la noche, siempre considerando la necesidad de actualización de datos por parte de los usuarios. Asimismo, me aseguraría de asignar los recursos necesarios para garantizar una ejecución sin interrupciones.
    En el caso de compartir un clúster de Spark, sería fundamental gestionar eficientemente la asignación de recursos. Se podría limitar la cantidad de nodos que una aplicación utiliza mediante la configuración de parámetros como spark.cores.max o controlar el uso de memoria a través de spark.executor.memory.
    En entornos como Azure, se podrían aprovechar los triggers proporcionados por Synapse, permitiendo configurar la frecuencia y el momento específico del día en que se ejecutan los procesos. Otra alternativa viable sería el uso de Airflow, que facilita la creación y programación de flujos de trabajo, ofreciendo flexibilidad en la planificación y ejecución de tareas.
    En resumen, la optimización de procesos implica no solo seleccionar momentos estratégicos para la ejecución, sino también gestionar eficazmente los recursos y utilizar herramientas específicas, como Synapse o Airflow, según el entorno de trabajo, para mejorar la eficiencia y evitar interrupciones durante la ejecución de tareas críticas.

2.
	Existe una tabla del Data Lake con alta transaccionalidad, que es actualizada diariamente con un gran volumen de datos. Consultas que cruzan información con esta tabla ven afectada su performance en tiempos de respuesta. Según su criterio, ¿cuáles serían las posibles causas de este problema? Dada la respuesta anterior, qué sugeriría para solucionarlo.
    Para optimizar el rendimiento de consultas en una tabla de alto volumen, es esencial garantizar que las particiones e índices estén alineados con los patrones de acceso más frecuentes. Por ejemplo, si la tabla está particionada por la fecha de emisión de la transacción pero la mayoría de las consultas se realizan según la fecha de pago, la partición actual puede no ser la más eficiente.
    Una revisión exhaustiva de las consultas realizadas puede revelar patrones de filtrado recurrentes por parte de los usuarios. Es crucial identificar si están utilizando campos específicos para filtrar datos y si estos coinciden con las particiones existentes. En caso contrario, podría ser beneficioso redefinir las particiones de la tabla para alinearse con los campos más utilizados en las consultas.
    Otra posibilidad a considerar es que los usuarios no estén aprovechando eficientemente las particiones existentes. En este caso, se podría proporcionar capacitación para educar a los usuarios sobre cómo utilizar las particiones de manera efectiva y mejorar así el rendimiento de las consultas.
    En conclusión, realizaría un análisis detallado de las consultas realizadas, ajustaría las particiones de la tabla según los patrones de acceso más comunes y proporcionaría orientación a los usuarios para optimizar sus consultas y aprovechar al máximo la estructura de partición definida. Esto debería conducir a una mejora significativa en el tiempo de respuesta y rendimiento general de las consultas.


3.

# Configuración de la cantidad de memoria que puede utilizar Spark
conf.set("spark.executor.memory", "25g")  # 25 GB por executor

# Configuración del número de cores que puede utilizar Spark
conf.set("spark.executor.cores", "6")  # 6 cores por executor

# Configuración del número total de executors
conf.set("spark.executor.instances", "1.5")  # 3 nodos en el clúster

