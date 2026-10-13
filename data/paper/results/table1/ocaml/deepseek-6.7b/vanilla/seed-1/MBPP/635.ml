let rec heap_sort (iterable : int list) : int list =
    let rec build_max_heap (lst : int list) i (size : int) =
        let l = 2*i + 1 in
        let r = 2*i + 2 in
        let largest =
            if l < size && List.nth lst l > List.nth lst i then l
            else i in
        let largest =
            if r < size && List.nth lst r > List.nth lst largest then r
            else largest in
        if largest != i then
            begin
                let lst = List.mapi (fun j x -> if j = i then List.nth lst largest
                                          else if j = largest then List.nth lst i
                                          else x) lst in
                build_max_heap lst largest size
            end
        else lst
    in
    let rec heapify (lst : int list) (size : int) =
        let lst = List.mapi (fun i _ -> build_max_heap lst i size) lst in
        lst
    in
    let size = List.length iterable in
    let lst = heapify iterable size in
    let rec extract_max (lst : int list) (size : int) =
        if size > 1 then
            let lst = List.mapi (fun i x -> if i = size - 1 then 0 else x) lst in
            let lst = build_max_heap lst 0 (size - 1) in
            let sorted_lst = List.mapi (fun i x -> if i = size - 1 then List.hd lst
                                          else x) lst in
            sorted_lst @ extract_max lst (size - 1)
        else lst
    in
    extract_max lst size


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
