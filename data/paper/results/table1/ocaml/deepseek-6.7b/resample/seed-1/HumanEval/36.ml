(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Return the number of times the digit 7 appears in integers less than n which are divisible by 11 or 13. *)
(*     >>> fizz_buzz 50 *)
(*     0 *)
(*     >>> fizz_buzz 78 *)
(*     2 *)
(*     >>> fizz_buzz 79 *)
(*     3 *)
let rec fizz_buzz (n : int) : int =
  if n < 11 then 0
  else 
    let rec count_sevens (num : int) : int =
      if num = 0 then 0
      else
        let digit_list = String.to_list (string_of_int num) in
        let rec count = function
          | [] -> 0
          | h::t -> if h = '7' then 1 + count t else count t
        in count digit_list + count_sevens (num - 1)
    in count_sevens (n - 1) 

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:7:26: Unbound value "String.to_list" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec fizz_buzz (n : int) : int =
  if n < 11 then 0
  else
    let rec count_sevens (num : int) : int =
      if num = 0 then 0
      else
        let digit_list = List.of_seq (String.to_seq (string_of_int num)) in
        let rec count = function
          | [] -> 0
          | h::t -> if h = '7' then 1 + count t else count t
        in count digit_list + count_sevens (num - 1)
    in count_sevens (n - 1)

