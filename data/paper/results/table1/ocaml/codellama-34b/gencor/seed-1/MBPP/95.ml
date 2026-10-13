
let rec find_Min_Length (lst : int list list) : int =
    let min_Length =
        match lst with
        | [] -> 0
        | [x] -> 1
        | [x; y] -> 2
        | x::y::zs ->
            if x = y then 
                1 + find_Min_Length (y::zs)
            else 
                find_Min_Length (x::zs)
    min_int min_int(min_int (y::zs) (x::y::zs))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xs -> 1 + find_Min_Length (xs))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xs -> find_Min_Length(xs) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(xz) + 1)
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::xz))
    (match lst with
    | [] -> 0
    | [x] -> x
    | x::xz -> x + find_Min_Length(xz))
    (match lst with
    | [] -> 0
    | [x] -> 1
    | x::xz -> find_Min_Length(x::x

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to find the length of the smallest list in a list of lists. *)
