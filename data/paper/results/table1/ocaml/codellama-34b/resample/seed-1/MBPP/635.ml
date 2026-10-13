(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
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
                iterable.(i) <- tmp
                heapify_helper iterable heap_size largest_node
            )
            else iterable
        in
        heapify_helper iterable heap_size (heap_size / 2 - 1)
    in
    let rec sort (iterable : int list) (heap_size : int) : int list =
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(heap_size)
        iterable.(heap_size) <- tmp
        if heap_size > 1 then sort iterable (heap_size - 1)
        else iterable
    in
    heapify iterable heap_size |> sort iterable

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:30: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
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
                iterable.(i) <- tmp
                heapify_helper iterable heap_size largest_node
            )
            else iterable
        in
        heapify_helper iterable heap_size (heap_size / 2 - 1)
    in
    let rec sort (iterable : int list) (heap_size : int) : int list =
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(heap_size)
        iterable.(heap_size) <- tmp
        if heap_size > 1 then sort iterable (heap_size - 1)
        else iterable
    in
    heapify iterable heap_size |> sort iterable

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:15:30: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
    let heap_size = List.length iterable in
    let heapify (iterable : int list) (heap_size : int) (i : int) : int list =
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
            iterable.(i) <- tmp
            heapify iterable heap_size largest_node
        )
        else iterable
    in
    let rec sort (iterable : int list) (heap_size : int) : int list =
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(heap_size)
        iterable.(heap_size) <- tmp
        if heap_size > 1 then sort iterable (heap_size - 1)
        else iterable
    in
    heapify iterable heap_size |> sort iterable

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:26: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
    let heap_size = List.length iterable in
    let heapify (iterable : int list) (heap_size : int) (i : int) : int list =
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
            iterable.(i) <- tmp
        )
        heapify iterable heap_size largest_node
    in
    let rec sort (iterable : int list) (heap_size : int) : int list =
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(heap_size)
        iterable.(heap_size) <- tmp
        if heap_size > 1 then sort iterable (heap_size - 1)
        else iterable
    in
    heapify iterable heap_size |> sort iterable

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:14:26: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_sort (iterable : int list) : int list =
    let heap_size = List.length iterable in
    let heapify (iterable : int list) (heap_size : int) (i : int) : int list =
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
            iterable.(i) <- tmp
        )
        heapify iterable heap_size largest_node
    in
    let rec sort (iterable : int list) (heap_size : int) : int list =
        let tmp = iterable.(0) in
        iterable.(0) <- iterable.(heap_size)
        iterable.(heap_size) <- tmp
        if heap_size > 1 then sort iterable (heap_size - 1)
        else iterable
    in
    heapify iterable heap_size |> sort iterable

