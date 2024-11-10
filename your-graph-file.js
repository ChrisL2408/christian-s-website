// Add this filter when processing nodes
const filteredNodes = nodes.filter(
  (node) =>
    !node.path.includes("/references/") && !node.url.includes("/references/")
);
