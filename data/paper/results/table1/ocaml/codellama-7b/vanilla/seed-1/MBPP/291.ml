let rec count_no_of_ways (n : int) (k : int) : int =
    let rec aux (i : int) (acc : int) : int =
        if i = 0 then acc
        else aux (i - 1) (acc * (k - 1))
    in
    aux n 1

let rec paint_fence (n : int) (k : int) (curr_color : int) (prev_color : int) : int =
    if n = 0 then 1
    else if curr_color < k then
        paint_fence (n - 1) k (curr_color + 1) prev_color + paint_fence (n - 1) k curr_color (prev_color + 1)
    else 0

let n = read_int ()
let k = read_int ()
let result = count_no_of_ways n k
print_int (result)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find out the number of ways of painting the fence such that at most 2 adjacent posts have the same color for the given fence with n posts and k colors. *)
