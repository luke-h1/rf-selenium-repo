import { useState } from "react";
import styles from "../styles/Home.module.css";

export default function Home() {
  const [text, setText] = useState<string>(
    "Laboris aute esse et ipsum elit consequat sit est magna."
  );

  return (
    <div className={styles.container}>
      <textarea
        value={text}
        onChange={(e) => setText(e.target.value)}
        minLength={10}
        maxLength={100}
        id='text'
        required
        style={{
          height: "500px",
          width: "300px",
        }}
      />
    </div>
  );
}
