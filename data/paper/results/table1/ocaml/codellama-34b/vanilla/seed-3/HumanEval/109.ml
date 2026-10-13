let rec move_one_ball (arr : int list) : bool =
    if arr = [] then true
    else
        let (x, y, z) = find_rotation_points arr in
        if x = -1 then false
        else
            let arr' = rotate (x, y, z) arr in
            if is_sorted arr' then true
            else move_one_ball arr'

and find_rotation_points (arr : int list) : int * int * int =
    let rec loop (i : int) (prev : int) (max : int) : int * int * int =
        if i = 0 then (max, i, prev)
        else
            let curr = arr.(i) in
            if curr > max then loop (i - 1) i curr
            else if curr < max then loop (i - 1) prev max
            else loop (i - 1) prev max
    in
    loop (Array.length arr - 1) 0 0

and rotate ((x, y, z) : int * int * int) (arr : int list) : int list =
    let arr' = Array.append (Array.sub 0 x arr) (Array.sub (x + 1) y arr) in
    Array.append arr' [| z |]

and is_sorted (arr : int list) : bool =
    let rec loop (i : int) : bool =
        if i = Array.length arr - 1 then true
        else if arr.(i) > arr.(i + 1) then false
        else loop (i + 1)
    in
    loop 0


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     We have a list 'arr' of N integers arr[1], arr[2], ..., arr[N].The *)
(*     numbers in the list will be randomly ordered. Your task is to determine if *)
(*     it is possible to get a list sorted in non-decreasing order by performing *)
(*     the following operation on the given list: *)
(*     You are allowed to perform right shift operation any number of times. *)
(*     One right shift operation means shifting all elements of the list by one *)
(*     position in the right direction. The last element of the list will be moved to *)
(*     the starting position in the list i.e. 0th index. *)
(*     If it is possible to obtain the sorted list by performing the above operation *)
(*     then return true else return false. *)
(*     If the given list is empty then return true. *)
(*     Note: The given list is guaranteed to have unique elements. *)
(*     For Example: *)
(*     >>> move_one_ball [3; 4; 5; 1; 2] *)
(*     true *)
(*     Explanation: By performin 2 right shift operations, non-decreasing order can *)
(*     be achieved for the given list. *)
(*     >>> move_one_ball [3; 5; 4; 1; 2] *)
(*     false *)
(*     Explanation:It is not possible to get non-decreasing order for the given *)
(*     list by performing any number of right shift operations. *)
