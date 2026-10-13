let rec heap_sort (iterable : int list) : int list =
    let n = List.length iterable in
    let a = Array.of_list iterable in
    let rec sink i =
        let mutable left = 2*i+1 in
        let mutable right = 2*i+2 in
        let mutable largest =
            if left < n && a.(left) > a.(i) then left
            else i
        in
        if right < n && a.(right) > a.(largest) then largest <- right
        in
        if largest <> i then
            let tmp = a.(i) in
            a.(i) <- a.(largest);
            a.(largest) <- tmp;
            sink largest;
    in
    let rec build_heap = function
        | n when n <= 0 -> ()
        | n ->
            sink (n-1);
            build_Heap (n-1)
    in
    build_heap n;
    let mutable rest = Array.copy a in
    let mutable result = [] in
    while not (List.isEmpty rest) do
        let element = rest.(0) in
        rest <- Array.sub rest 1 ((Array.length rest) - 1);
        result <- element :: result
    done;
    result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
