let rec tri (n : int) : int list = 
    let rec helper i acc = 
        if i > n then List.rev acc
        else 
            let next_val = if i mod 2 = 0 then 1 + i / 2 else tri (i - 1) + tri (i - 2) + tri (i + 1) in
            helper (i + 1) (next_val :: acc) 
    in
    helper 1 [3]

let rec print_list lst = 
    match lst with
    | [] -> ()
    | h :: t -> print_int h; print_string " "; print_list t

let () = 
    let result = tri 3 in
    print_list result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Everyone knows Fibonacci sequence, it was studied deeply by mathematicians in *)
(*     the last couple centuries. However, what people don't know is Tribonacci sequence. *)
(*     Tribonacci sequence is defined by the recurrence: *)
(*     tri(1) = 3 *)
(*     tri(n) = 1 + n / 2, if n is even. *)
(*     tri(n) =  tri(n - 1) + tri(n - 2) + tri(n + 1), if n is odd. *)
(*     For example: *)
(*     tri(2) = 1 + (2 / 2) = 2 *)
(*     tri(4) = 3 *)
(*     tri(3) = tri(2) + tri(1) + tri(4) *)
(*     = 2 + 3 + 3 = 8 *)
(*     You are given a non-negative integer number n, you have to a return a list of the *)
(*     first n + 1 numbers of the Tribonacci sequence. *)
(*     Examples: *)
(*     >>> tri 3 *)
(*     [1; 3; 2; 8] *)
