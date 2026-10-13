
let rec is_undulating (n : int) : bool =
  match n with
  | 0 -> false
  | _ ->
    let s = String.of_seq (String.to_seq (string_of_int n)) in
    if String.length s <= 2 then true
    else
      let rec helper (i : int) (j : int) : bool =
        if j = String.length s - 1 then true
        else if String.get s i <> String.get s j then false
        else helper (i + 1) (j + 1)
      in helper 0 1

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
