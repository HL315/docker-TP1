curl -X POST -H "Content-Type: application/json" -d '{"nom": "Tâche 1", "description": "Description de la tâche 1", "statut": "En cours", "dateCreation": "2023-12-08"}' http://localhost:3000/tasks

curl http://localhost:3000/tasks

curl http://localhost:3000/tasks/{task_id}

curl -X PUT -H "Content-Type: application/json" -d '{"nom": "Tâche mise à jour", "description": "Description mise à jour", "statut": "Terminée", "dateCreation": "2023-12-09"}' http://localhost:3000/tasks/{task_id}

curl -X DELETE http://localhost:3000/tasks/{task_id}
