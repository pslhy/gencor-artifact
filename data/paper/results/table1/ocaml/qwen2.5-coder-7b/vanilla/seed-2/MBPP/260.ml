let rec newman_prime (n : int) : int = 
    let rec is_prime (x : int) (i : int) : bool = 
        if i * i > x then true
        else if x mod i = 0 then false
        else is_prime x (i + 1)
    in
    let rec fw_prime (x : int) (i : int) (count : int) : int = 
        let next_value = 2 * (x * x - 1) + i in
        if is_prime next_value 2 then 
            if count = n then next_value
            else fw_prime next_value (i + 2) (count + 1)
        else 
            fw_prime x (i + 2) count
    in
    fw_prime 1 1 0

let nth_newman_prime (n : int) : int = newman_prime n



(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the nth newman–shanks–williams prime number. *)
