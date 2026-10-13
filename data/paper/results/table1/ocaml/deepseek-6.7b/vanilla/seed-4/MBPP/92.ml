let rec is_undulating (n : int) : bool =
  let rec aux x =
    if x = 0 then false else
      let digits = string_of_int x |> String.length in
      match digits with
      | 1 | 2 -> true
      | _ -> let next_digits = string_of_int (x / 10) |> String.length in
              if digits = next_digits + 1 then true else false
  in
  aux n


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
