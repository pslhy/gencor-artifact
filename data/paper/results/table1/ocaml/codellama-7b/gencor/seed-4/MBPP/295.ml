
let rec sum_div (number : int) : int = 
    let divisors = 
        List.filter
            (fun (x : int) -> 
                x > 0 && number mod x = 0)
            (List.init (number / 2 + 1) (fun x -> x + 1)) 
    in
    List.fold_left (fun acc x -> acc + x) 0 divisors

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to return the sum of all divisors of a number. *)
