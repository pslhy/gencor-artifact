let rec bell_number (n : int) : int =
  if n <= 0 then
    1
  else
    ((bell_number (n-1)) * 2 * ( (2 * (n-1)) mod 2)) / 2;; 

let rec partition n = 
  if n = 0 then 
    1 
  else 
    ((partition (n/12) * (4*(12*n + 1) - 3*n - 1))/((n/12) * (4*(12*n + 1) - 7*n + 5))) ;;

let bell_partition n = 
  partition (bell_number n);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the number of ways to partition a set of Bell numbers. *)
