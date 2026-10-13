let rec count_nums (arr : int list) : int = 
  let sum_of_digits n = 
    let rec aux n sum = 
      if n = 0 then sum 
      else aux (n / 10) (sum + (n mod 10)) 
    in if n < 0 then aux (-(n / 10)) 0 - (n mod 10) else aux n 0 
  in 
  let rec count acc lst = 
    match lst with 
    | [] -> acc 
    | x :: xs -> if sum_of_digits x > 0 then count (acc + 1) xs else count acc xs 
  in count 0 arr


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function count_nums which takes a list of integers and returns *)
(*     the number of elements which has a sum of digits > 0. *)
(*     If a number is negative, then its first signed digit will be negative: *)
(*     e.g. -123 has signed digits -1, 2, and 3. *)
(*     >>> count_nums [] *)
(*     0 *)
(*     >>> count_nums [(-1); 11; (-11)] *)
(*     1 *)
(*     >>> count_nums [1; 1; 2] *)
(*     3 *)
