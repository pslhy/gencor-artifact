let rec catalan_number (num : int) : int =
  match num with
  | 0 -> 1
  | _ ->
    let rec calc_catalan (nth : int) (sum : int) : int =
      if nth < 0 then sum
      else calc_catalan (nth - 1) (sum + (catalan_number nth) * (catalan_number (num - nth - 1)))
    in calc_catalan num 0
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
