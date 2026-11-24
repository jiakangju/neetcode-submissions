-- Write your query below
SELECT t.team_id,
       t.team_name,
       COALESCE(SUM(p.num_points), 0) AS num_points
FROM teams t
LEFT JOIN (
    SELECT host_team AS team_id,
           CASE WHEN host_goals > guest_goals THEN 3
                WHEN host_goals < guest_goals THEN 0
                ELSE 1 END AS num_points
    FROM matches
    UNION ALL
    SELECT guest_team AS team_id,
           CASE WHEN guest_goals > host_goals THEN 3
                WHEN guest_goals < host_goals THEN 0
                ELSE 1 END AS num_points
    FROM matches
) p ON t.team_id = p.team_id
GROUP BY t.team_id, t.team_name
ORDER BY num_points DESC, team_id

