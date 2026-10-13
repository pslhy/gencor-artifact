let rec dog_age (h_age : int) : int = 
    (* Assuming a unitHash conversion with a scaling factor of 20 *)
    let human_years = h_age * 20 in

    (* A human can age 16 dog years for every human year lived *)
    human_years * 16


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to calculate a dog's age in dog's years. *)
