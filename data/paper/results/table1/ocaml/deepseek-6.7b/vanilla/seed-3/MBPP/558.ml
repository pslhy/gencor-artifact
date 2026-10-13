let rec digit_distance_nums (n1 : int) (n2 : int) : int =
  let str1 = string_of_int n1 in
  let str2 = string_of_int n2 in
  if (String.length str1) <> (String.length str2) then
    raise (Invalid_argument "The numbers must be of the same length")
  else
    let len = String.length str1 in
    let rec loop i sum = 
      if i = len then sum
      else 
        let num1 = int_of_string (String.make 1 (String.get str1 i)) in
        let num2 = int_of_string (String.make 1 (String.get str2 i)) in
        loop (i+1) (sum + abs (num1 - num2))
    in loop 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the sum of the per-digit difference between two integers. *)
