//
// Created by 86185 on 2020/12/14.
//

#ifndef MAXFLOW_ALGOONGRAPH_H
#define MAXFLOW_ALGOONGRAPH_H

#include "Graph.h"
#include <queue>

#define INF 0x7fffffff
using std::queue;
using std::pair;
using std::make_pair;

class AlgoOnGraph {
public:
	int maxflow_FordFulkerson(Graph *graph, int source, int sink);

	int maxflow_EdmondsKarp(Graph *graph, int source, int sink);

	int maxflow_Dinic(Graph *graph, int source, int sink);

private:
	int dfs(Graph *graph, int s, int t, int flow);

	int bfs(Graph *graph, int s, int t, pair<int, int> *pre, int *flow);

	int dfsForDinic(Graph *graph, int s, int t, int flow, int *deep);

	bool bfsForDinic(Graph *graph, int s, int t, int *deep);

	vector<bool> used;
};

int AlgoOnGraph::dfs(Graph *graph, int s, int t, int flow) {
	if (s == t) return flow;
	for (int i = graph->head[s]; i; i = graph->nxt[i]) {
		if (graph->capacity[i] <= 0 && used[graph->to[i]]) continue;
		used[graph->to[i]] = true;
		int df = dfs(graph, graph->to[i], t, std::min(flow, graph->capacity[i]));
		if (df > 0) {
			graph->capacity[i] -= df;
			graph->capacity[i ^ 1] += df;
			return df;
		}
	}
}

int AlgoOnGraph::maxflow_FordFulkerson(Graph *graph, int source, int sink) {
	int maxflow = 0, augmentation;
	used.resize(graph->numPoints, false);
	do {
		used.resize(used.size(), false);
		augmentation = dfs(graph, source, sink, INF);
		maxflow += augmentation;
	} while (augmentation > 0);

	return maxflow;
}

int AlgoOnGraph::bfs(Graph *graph, int s, int t, pair<int, int> *pre, int *flow) {
	for (int i = 0; i < graph->numPoints; i++) pre[i].first = -1, pre[i].second = -1;
	flow[s] = INF;
	queue<int> que;
	que.push(s);
	while (!que.empty()) {
		int x = que.front();
		que.pop();
		if (x == t) break;
		for (int i = graph->head[x]; i; i = graph->nxt[i]) {
			if (graph->to[i] != s && pre[graph->to[i]].first == -1 && graph->capacity[i] > 0) {
				pre[graph->to[i]].first = i;
				pre[graph->to[i]].second = x;
				flow[graph->to[i]] = std::min(flow[x], graph->capacity[i]);
				que.push(graph->to[i]);
			}
		}
	}
	return pre[t].second == -1 ? -1 : flow[t];
}

int AlgoOnGraph::maxflow_EdmondsKarp(Graph *graph, int source, int sink) {
	int maxflow = 0, augmentation;
	int flow[graph->numPoints];
	pair<int, int> pre[graph->numPoints];//first记边，second记点

	while ((augmentation = bfs(graph, source, sink, pre, flow)) != -1) {
		maxflow += augmentation;
		int t = sink;
		while (t != source) {
			graph->capacity[pre[t].first] -= augmentation;
			graph->capacity[pre[t].first ^ 1] += augmentation;
			t = pre[t].second;
		}
	}
	return maxflow;
}

int AlgoOnGraph::maxflow_Dinic(Graph *graph, int source, int sink) {
	int maxflow = 0, augmentation;
	int deep[graph->numPoints];
	while (bfsForDinic(graph, source, sink, deep)) {//存在增广路
		while ((augmentation = dfsForDinic(graph, source, sink, INF, deep)) > 0) {
			maxflow += augmentation;
		}
	}
	return maxflow;
}

int AlgoOnGraph::dfsForDinic(Graph *graph, int s, int t, int flow, int *deep) {
	if (s == t) return flow;
	int curflow = 0;
	for (int i = graph->head[s]; i; i = graph->nxt[i]) {
		int y = graph->to[i];//边的终点
		if (deep[y] == deep[s] + 1 && graph->capacity[i] > 0) {
			curflow = dfsForDinic(graph, y, t, std::min(flow, graph->capacity[i]), deep);
			if (curflow > 0) {
				graph->capacity[i] -= curflow;
				graph->capacity[i ^ 1] += curflow;
				return curflow;
			}
		}

	}
	return 0;
}

bool AlgoOnGraph::bfsForDinic(Graph *graph, int s, int t, int *deep) {
	for (int i = 0; i < graph->numPoints; i++) deep[i] = -1;
	deep[s] = 0;
	queue<int> que;
	que.push(s);
	while (!que.empty()) {
		int x = que.front();
		que.pop();
		for (int i = graph->head[x]; i; i = graph->nxt[i]) {
			int y = graph->to[i];
			if (deep[y] == -1 && graph->capacity[i] > 0) {
				deep[y] = deep[x] + 1;
				que.push(y);
			}
		}
	}
	return (deep[t] != -1);//是否存在增广路
}


#endif //MAXFLOW_ALGOONGRAPH_H
