import { createSignal } from "solid-js";
import type { JSX } from "solid-js";

export default function Counter(): JSX.Element {
  const [count, setCount] = createSignal(0);

  return (
    <div class="card">
      <button onClick={() => setCount((count) => count + 1)}>
        count is {count()}
      </button>
    </div>
  );
}
