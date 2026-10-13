let rec toggle_middle_bits (n : int) : int = 
    (* Get the unit's binary representation and toggle the bits with their complements *)
    let rec toggle_bits (repr : char array) (i : int) : int = 
        (* Base case: If i is greater than the length of the representation, return the result *) 
        if i >= Array.length repr then int_of_string repr
        else
            (* Toggle the ith bit with its complement *) 
            let complement = repr.[i] == '1'
            repr.[i] <- if complement then '0' else '1'
            toggle_bits repr (i+1) in
    toggle_bits (string_of_int n) 1


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
