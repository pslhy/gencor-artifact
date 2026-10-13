(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to check whether the count of divisors is even. https://www.w3resource.com/mlthon-exercises/basic/mlthon-basic-1-exercise-24.php *)
let rec count_divisors (n : int) : bool = 
    (* base case: 1 and the number itself *)
    let rec loop (i : int) (count : int) : bool = 
        if i >= n then count mod 2 = 0
        else if n mod i = 0 then loop i + 1 (count + 1)
        else loop i + 1 count
    in loop 1 0

