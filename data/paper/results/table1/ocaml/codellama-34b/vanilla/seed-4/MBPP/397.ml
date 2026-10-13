let rec median_numbers (a : int) (b : int) (c : int) : float = 
    let (min, max) = (min a b, max a b) in 
    if b = min && c = max then 
        
        
        float_of_int (a)
    else if b = min && c < max then 
        
        
        float_of_int ((a + c) / 2)
    else if b > min && b < max then 
        
        
        float_of_int (b)
    else if b > min && b > max then 
        
        
        float_of_int ((a + b) / 2)
    else 
        
        
        float_of_int (c)

let () = print_endline ("Median of 3, 4, 5 is: " ^ (median_numbers 3 4 5));;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the median of three numbers. *)
