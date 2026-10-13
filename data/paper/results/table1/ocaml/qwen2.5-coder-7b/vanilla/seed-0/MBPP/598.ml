let rec armstrong_number (number : int) : bool = 
  let digits = ref [] in
  let temp = ref number in
  while !temp > 0 do
    digits := (!temp mod 10) :: !digits;
    temp := !temp / 10;
  done;
  let num_digits = List.length !digits in
  let sum = List.fold_left (fun acc digit -> acc + (int_of_string (string_of_int digit) ** num_digits)) 0 !digits in
  sum = number


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check whether the given number is armstrong or not. *)
