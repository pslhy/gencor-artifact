let rec amicable_numbers_sum (limit : int) : int = 
    let sum divs n = 
        List.sum (List.map (fun x -> if x = n then 0 else x) (List.filter (fun x -> n mod x = 0) (List.range 1 (n land -n)))) 
    in
    let is_amicable a b = a <> b && sum [] a = b && sum [] b = a in
    List.sum (List.filter (is_amicable (sum [])) (List.range 1 limit))

let () = 
    print_int (amicable_numbers_sum 30000) 
    (* Output the sum of all amicable numbers under 30000 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
