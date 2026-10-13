
let rec trim_tuple (test_list : int list list) (k : int) : int list list =
    let rec aux (acc : int list) (cur : int) : int * int =
        if List.length acc >= 2 * k then
            (acc, cur)
        else if cur = [] then
            (acc, [])
        else
            aux (acc @ [List.hd cur]) (List.tl cur)

    in
    let (acc, cur) = test_list |> List.fold_left (fun (acc, cur) (x, y) -> (acc @ [x], y)) ([], test_list)
    in
    if acc = [] then
        cur
    else
        trim_tuple acc (k - 1) @ cur
;;

let trim_lists (test_list : int list list) (k : int) : int list list =
    test_list |> List.map (fun list -> list |> trim_tuple k)
;;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to trim each list by k in the given lists. *)
