let rec sum_squares (lst : int list) : int = 
    match lst with 
    | head :: tail -> 
    (match head with 
    | x when x % 3 = 0 -> x * x 
    | x -> x) + sum_squares tail 
    | [] -> 0)

And 

let recursion_with_core 
module Core = struct 
    let sum_squares lst = 
    let rec loop sum lst = 
        match lst with 
        | head :: tail -> loop (sum + head * head) tail 
        | _ -> sum 
    in 
    loop 0 lst 
end in 
let rec sum_squares (lst : int list) : int = 
    match lst with 
    | head :: tail -> 
    (match head with 
    | x when x % 3 = 0 -> x * x 
    | x -> x) + sum_squares tail 
    | [] -> 0)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     " *)
(*     This function will take a list of integers. For all entries in the list, the function shall square the integer entry if its index is a *)
(*     multiple of 3 and will cube the integer entry if its index is a multiple of 4 and not a multiple of 3. The function will not *)
(*     change the entries in the list whose indexes are not a multiple of 3 or 4. The function shall then return the sum of all entries. *)
(*     Examples: *)
(*     >>> lst *)
(*     [1; 2; 3] *)
(*     >>> lst *)
(*     [] *)
(*     >>> lst *)
(*     [(-1); (-5); 2; (-1); (-5)] *)
