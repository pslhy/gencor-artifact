
let rec heap_sort (iterable : int list) : int list =
    let heap_size = List.length iterable in
    let heapify iterable heap_size =
        let rec heapify_helper (iterable : int list) (heap_size : int) (i : int) : int list =
            let left = i * 2 + 1 in
            let right = i * 2 + 2 in
            let largest_node =
                if left < heap_size && iterable.(left) > iterable.(i) then left
                else if right < heap_size && iterable.(right) > iterable.(i) then right
                else i
            in
            if largest_node <> i then (
                let tmp = iterable.(largest_node) in
                iterable.(largest_node) <- iterable.(i)
                iterable.(i)
            );
            heapify_helper iterable heap_size (i - 1)
        in
        heapify_helper iterable heap_size ((heap_size / 2) - 1)
    in
    heapify iterable heap_size;
    let rec sort (iterable : int list) (i : int) : int list =
        if i < heap_size then (
            let tmp = iterable.(0) in
            iterable.(0) <- iterable.(i)
            iterable.(i)
        );
        sort iterable (i - 1)
    in
    sort iterable (heap_size - 1)

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
