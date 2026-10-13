let rec validate (n : int) : bool = 
  let rec count_digits (n : int) (digit_count : int array) : int array =
    if n = 0 then digit_count
    else let cur_digit = n mod 10 in
         count_digits (n / 10) (digit_count |> Array.set cur_digit (digit_count.(cur_digit) + 1))
  in let digit_count = count_digits n (Array.make 10 0) in
     Array.for_all (fun count -> count <= n) digit_count


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function takes in an integer and check whether the frequency of each digit in the integer is less than or equal to the digit itself. *)
