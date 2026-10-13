let rec is_undulating (n : int) : bool =
  let rec aux (acc : int list) (i : int) : bool * int list =
    if i = 0 then (false, acc)
    else
      let is_undulating = acc <> [n mod 10] && acc <> [n mod 10; (n mod 100) / 10]
                     && acc <> [n mod 10; (n mod 100) / 10; (n mod 1000) / 100]
      in
      if is_undulating then (true, acc)
      else aux (n mod 10 :: acc) (i - 1)
  in
  let _, acc = aux [] n in
  acc = []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is undulating or not. *)
