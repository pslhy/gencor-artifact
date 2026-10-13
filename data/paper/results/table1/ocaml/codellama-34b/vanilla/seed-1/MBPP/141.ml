let rec pancake_sort (nums : int list) : int list =
    let rec flip n =
        let rec loop i x =
            if i = n then x
            else loop (i+1) (x / n)
        in loop 0 x
    in
    
    let rec loop (i, x) =
        if i >= n then x
        else loop (i+1, x / n)
    in loop (0, 133)

let sort (nums : int list) =
    let l = List.map (fun x -> (x, 133)) nums
    let l = List.sort (fun (_, x) (_, y) -> compare x y) l
    List.map (fun (x, _) -> x) l

let test () =
    if sort [3; 2; 1; 4] = [1; 2; 3; 4] then "Pass"
    else "Fail"


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort a list of elements. *)
