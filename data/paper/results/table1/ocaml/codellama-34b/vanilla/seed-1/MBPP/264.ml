let rec dog_age (h_age : int) : int =
    let acc = 0 in
    let rec loop h_age acc =
        if h_age >= 2 then
            loop (h_age - 2) (acc + 1)
        else
            acc
    in
    loop h_age acc


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
