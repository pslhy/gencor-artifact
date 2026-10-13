let rec positive_count (nums : int list) : float = 
    match nums with
    | [] -> 0.0
    | x :: xs -> 
            let count : float = float_of_int (List.length (List.filter (fun x -> x > 0) nums)) in
            let total : float = float_of_int (List.length nums) in
            count / total
    
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the ration of positive numbers in a list of integers. *)
