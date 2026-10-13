let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number % x = 0)
            [1 .. number]
    in
    List.fold_left (+) 0 divisors

And here is the function to calculate the sum of all divisors of a number:

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
