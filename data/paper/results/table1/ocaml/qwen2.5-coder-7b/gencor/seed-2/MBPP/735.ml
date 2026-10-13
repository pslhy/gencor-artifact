
let rec toggle_middle_bits (n : int) : int = 
    let count_bits = (fun x -> if x = 0 then 0 else 1 + (x land -x)) in
    let bit_count = count_bits n in
    let mask = 
        (1 lsl (bit_count - 2)) - 1 
    in
    n lxor mask

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to toggle bits of the number except the first and the last bit. https://www.geeksforgeeks.org/toggle-bits-number-expect-first-last-bits/ *)
