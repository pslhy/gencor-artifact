let rec catalan_number (num : int) : int =
  match num with
    | 0 -> 1
    | _ when num < 0 -> failwith "Invalid input"
    | _ -> (2 * (2 * num - 1) * catalan_number (num - 1)) / (num + 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function which returns nth catalan number. *)
