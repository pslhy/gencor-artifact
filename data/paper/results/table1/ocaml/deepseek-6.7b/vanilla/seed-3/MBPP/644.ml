let rec reverse_Array_Upto_K (input : int list) (k : int) : int list =
    let rec helper (rem_input : int list) (rem_k : int) (acc : int list) : int list =
        match rem_input, rem_k with
        | [], _ -> List.rev acc
        | _::xs, 0 -> List.rev acc @ rem_input
        | x::xs, n when n > 0 -> helper xs (rem_k - 1) (x::acc)
        | _ -> failwith "invalid input"
    in
   helper input k []


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to reverse a list upto a given position. *)
