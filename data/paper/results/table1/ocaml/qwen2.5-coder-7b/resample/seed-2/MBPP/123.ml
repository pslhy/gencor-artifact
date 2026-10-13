(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sum all amicable numbers from 1 to a specified number. *)
let rec amicable_numbers_sum (limit : int) : int = 
    let sum divs n = 
        List.sum (List.map (fun x -> if x = n then 0 else x) (List.filter (fun x -> n mod x = 0) (List.range 1 (n land -n)))) 
    in
    let is_amicable a b = a <> b && sum [] a = b && sum [] b = a in
    List.sum (List.filter (is_amicable (sum [])) (List.range 1 limit))

let () = 
    print_int (amicable_numbers_sum 30000) 
    (* Output the sum of all amicable numbers under 30000 *)

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:3:9: Unbound value "List.sum" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int = 
    let sum divs n = 
        List.fold_left (+) 0 (List.filter (fun x -> n mod x = 0) (List.range 1 (n land -n))) 
    in
    let is_amicable a b = a <> b && sum [] a = b && sum [] b = a in
    List.fold_left (+) 0 (List.filter is_amicable (List.range 1 limit))

let () = 
    print_int (amicable_numbers_sum 30000) 
    (* Output the sum of all amicable numbers under 30000 *)
``
(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:11:2: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec amicable_numbers_sum (limit : int) : int = 
    let sum divs n = 
        let rec sum_divisors acc m = 
            if m > (n land -n) then acc else sum_divisors (if n mod m = 0 then acc + m else acc) (m + 1) 
        in sum_divisors 0 1 
    in
    let is_amicable a b = a <> b && sum [] a = b && sum [] b = a in
    List.fold_left (+) 0 (List.filter is_amicable (List.range 1 limit))

let () = 
    print_int (amicable_numbers_sum 30000) 
    (* Output the sum of all amicable numbers under 30000 *)

