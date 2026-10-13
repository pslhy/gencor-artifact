let rec is_undulating (n : int) : bool =
  match n with
  | 1 | 2 -> true
  | _ ->
      let rec helper (i : int) (acc : int) : bool =
        match i with
        | 0 | 1 -> acc < 2
        | _ ->
            let curr = abs (acc - n) in
            let acc' = max curr acc in
            helper (i - 1) acc'
      in
      helper (n - 1) 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
