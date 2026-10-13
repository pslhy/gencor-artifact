let rec is_polite (n : int) : int = 
    let count_set_bits (x : int) : int = 
        let rec count (n : int) (count : int) : int = 
            if n = 0 then count
            else count (n land (n - 1)) (count + 1)
        in count x 0
    in count_set_bits n = 1

let rec nth_polite_number (n : int) (current : int) (count : int) : int = 
    if count = n then current 
    else nth_polite_number n (current + 1) (if is_polite (current + 1) then count + 1 else count)

let n_th_polite_number (n : int) : int = 
    nth_polite_number n 0 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find nth polite number. geeksforgeeks.org/n-th-polite-number/ *)
