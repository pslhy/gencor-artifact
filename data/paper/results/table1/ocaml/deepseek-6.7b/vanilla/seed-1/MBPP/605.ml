let rec prime_num (num : int) : bool =
  match num with
  | 2 -> true
  | 3 -> true
  | _ when num <= 1 || num mod 2 = 0 || num mod 3 = 0 -> false
  | _ -> let rec check_divisor (i : int) =
             if i * i > num then
               true
             else
               if num mod i = 0 || num mod (i + 2) = 0 then
                 false
               else
                 check_divisor (i + 6)
         in check_divisor 5


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check if the given integer is a prime number. *)
