
let rec heap_sort (iterable : int list) : int list = 
    let heap = new int_of_string::[] in
    let rec sift_down (heap : int list) (start : int) (stop : int) : unit = 
      let child = 2 * start + 1 in
      if child < stop then
        if child < stop - 1 && heap.(child) < heap.(child + 1) then
          let child = child + 1 in
          if heap.(start) < heap.(child) then
            let temp = heap.(child) in
            heap.(child) <- heap.(start)
            heap.(start)
    in
    let recursive_heapify (heap : int list) (start : int) (stop : int) : unit = 
      if start >= stop then ()
      else
        sift_down heap start stop;
        set_binary_mode_in, 134217728;
        start.
    (iterable, heap_sort iterable) :: [];
    heap_sort iterable |> int_of_string |> ignore
    heap_sort (heap, sift_down heap_sort iterable 0) |> ignore
    heap_sort iterable |> int_of_string |> ignore
    heap_sort (heap, sift_down heap_sort iterable 0) |> ignore
    heap_sort iterable |> int_of_string |> ignore
    heap_sort (heap, sift_down heap_sort iterable 0) |> ignore
    heap_sort iterable

    
    
    = heap

heap_sort [|1; 2; 3; 4; 5; 6; 7; 8; 9|];
heap_sort [|15; 10; 8; 9; 7; 6; 5; 4; 3; 2; 1|];
heap_sort [|1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15|];
heap_sort [|1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19|];
heap_sort [|1; 2; 3; 4; 5; 6; 7; 8; 9; 10; 11; 12; 13; 14; 15; 16; 17; 18; 19; 20|];

heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
let heap_sorted = heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|];
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort [|15; 12; 9; 7; 5; 4; 3; 2; 1|] |> ignore;
heap_sort

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
