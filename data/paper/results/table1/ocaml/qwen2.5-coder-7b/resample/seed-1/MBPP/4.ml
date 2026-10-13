(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the n largest integers from a given list of numbers, returned in descending order. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap.heap = fun lst ->
    let rec loop i =
      if i > 0 then
        let parent = (i - 1) / 2 in
        if lst.(i) > lst.(parent) then begin
          let tmp = lst.(i) in
          lst.(i) <- lst.(parent);
          lst.(parent) <- tmp;
          loop parent
        end else
          i
    in
    let rec insert n lst =
      if n = 0 then lst else
        let i = Array.length lst in
        Array.set lst i n;
        let j = loop i in
        insert (n - 1) (Array.sub lst 0 (i + 1))
    in
    insert (Array.length lst) lst

  let heap = build_heap (Array.of_list nums) in
  let rec heap_pop lst =
    if Array.length lst = 0 then [] else
      let max = lst.(0) in
      let last = Array.length lst - 1 in
      Array.set lst 0 lst.(last);
      Array.blit lst 1 lst 0 last;
      let i = 0 in
      let rec fix j =
        let left = 2 * j + 1 in
        let right = 2 * j + 2 in
        if left >= last && right >= last then
          j
        else if left >= last then
          if lst.(j) < lst.(left) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(left);
            lst.(left) <- tmp;
            fix left
          end else
            j
        else if right >= last then
          if lst.(j) < lst.(right) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(right);
            lst.(right) <- tmp;
            fix right
          end else
            j
        else
          if lst.(j) < lst.(left) && lst.(j) < lst.(right) then begin
            if lst.(left) >= lst.(right) then begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(left);
              lst.(left) <- tmp;
              fix left
            end else begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(right);
              lst.(right) <- tmp;
              fix right
            end
          end else
            j
      in
      let j = fix i in
      max :: heap_pop (Array.sub lst 0 j)
  in
  let rec take n lst =
    if n <= 0 then [] else
      match heap_pop lst with
      | head :: tail -> head :: take (n - 1) tail
      | [] -> []
  in
  take n (Array.to_list heap)
 
(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:2:21: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap lst =
    let rec loop i =
      if i > 0 then
        let parent = (i - 1) / 2 in
        if lst.(i) > lst.(parent) then begin
          let tmp = lst.(i) in
          lst.(i) <- lst.(parent);
          lst.(parent) <- tmp;
          loop parent
        end else
          i
    in
    let rec insert n lst =
      if n = 0 then lst else
        let i = Array.length lst in
        Array.set lst i n;
        let j = loop i in
        insert (n - 1) (Array.sub lst 0 (i + 1))
    in
    insert (Array.length lst) lst

  let heap = build_heap (Array.of_list nums) in
  let rec heap_pop lst =
    if Array.length lst = 0 then [] else
      let max = lst.(0) in
      let last = Array.length lst - 1 in
      Array.set lst 0 lst.(last);
      Array.blit lst 1 lst 0 last;
      let i = 0 in
      let rec fix j =
        let left = 2 * j + 1 in
        let right = 2 * j + 2 in
        if left >= last && right >= last then
          j
        else if left >= last then
          if lst.(j) < lst.(left) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(left);
            lst.(left) <- tmp;
            fix left
          end else
            j
        else if right >= last then
          if lst.(j) < lst.(right) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(right);
            lst.(right) <- tmp;
            fix right
          end else
            j
        else
          if lst.(j) < lst.(left) && lst.(j) < lst.(right) then begin
            if lst.(left) >= lst.(right) then begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(left);
              lst.(left) <- tmp;
              fix left
            end else begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(right);
              lst.(right) <- tmp;
              fix right
            end
          end else
            j
      in
      let j = fix i in
      max :: heap_pop (Array.sub lst 0 j)
  in
  let rec take n lst =
    if n <= 0 then [] else
      match heap_pop lst with
      | head :: tail -> head :: take (n - 1) tail
      | [] -> []
  in
  take n (Array.to_list heap)

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap lst =
    let rec loop i =
      if i > 0 then
        let parent = (i - 1) / 2 in
        if lst.(i) > lst.(parent) then begin
          let tmp = lst.(i) in
          lst.(i) <- lst.(parent);
          lst.(parent) <- tmp;
          loop parent
        end else
          i
    in
    let rec insert n lst =
      if n = 0 then lst else
        let i = Array.length lst in
        Array.set lst i n;
        let j = loop i in
        insert (n - 1) (Array.sub lst 0 (i + 1))
    in
    insert (Array.length lst) lst

  let heap = build_heap (Array.of_list nums) in
  let rec heap_pop lst =
    if Array.length lst = 0 then [] else
      let max = lst.(0) in
      let last = Array.length lst - 1 in
      Array.set lst 0 lst.(last);
      Array.blit lst 1 lst 0 last;
      let i = 0 in
      let rec fix j =
        let left = 2 * j + 1 in
        let right = 2 * j + 2 in
        if left >= last && right >= last then
          j
        else if left >= last then
          if lst.(j) < lst.(left) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(left);
            lst.(left) <- tmp;
            fix left
          end else
            j
        else if right >= last then
          if lst.(j) < lst.(right) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(right);
            lst.(right) <- tmp;
            fix right
          end else
            j
        else
          if lst.(j) < lst.(left) && lst.(j) < lst.(right) then begin
            if lst.(left) >= lst.(right) then begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(left);
              lst.(left) <- tmp;
              fix left
            end else begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(right);
              lst.(right) <- tmp;
              fix right
            end
          end else
            j
      in
      let j = fix i in
      max :: heap_pop (Array.sub lst 0 j)
  in
  let rec take n lst =
    if n <= 0 then [] else
      match heap_pop lst with
      | head :: tail -> head :: take (n - 1) tail
      | [] -> []
  in
  take n (Array.of_list heap)

(* === Turn 4 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap lst =
    let rec loop i =
      if i > 0 then
        let parent = (i - 1) / 2 in
        if lst.(i) > lst.(parent) then begin
          let tmp = lst.(i) in
          lst.(i) <- lst.(parent);
          lst.(parent) <- tmp;
          loop parent
        end else
          i
    in
    let rec insert n lst =
      if n = 0 then lst else
        let i = Array.length lst in
        Array.set lst i n;
        let j = loop i in
        insert (n - 1) (Array.sub lst 0 (i + 1))
    in
    insert (Array.length lst) lst

  let heap = build_heap (Array.of_list nums) in
  let rec heap_pop lst =
    if Array.length lst = 0 then [] else
      let max = lst.(0) in
      let last = Array.length lst - 1 in
      Array.set lst 0 lst.(last);
      Array.blit lst 1 lst 0 last;
      let i = 0 in
      let rec fix j =
        let left = 2 * j + 1 in
        let right = 2 * j + 2 in
        if left >= last && right >= last then
          j
        else if left >= last then
          if lst.(j) < lst.(left) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(left);
            lst.(left) <- tmp;
            fix left
          end else
            j
        else if right >= last then
          if lst.(j) < lst.(right) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(right);
            lst.(right) <- tmp;
            fix right
          end else
            j
        else
          if lst.(j) < lst.(left) && lst.(j) < lst.(right) then begin
            if lst.(left) >= lst.(right) then begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(left);
              lst.(left) <- tmp;
              fix left
            end else begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(right);
              lst.(right) <- tmp;
              fix right
            end
          end else
            j
      in
      let j = fix i in
      max :: heap_pop (Array.sub lst 0 j)
  in
  let rec take n lst =
    if n <= 0 then [] else
      match heap_pop lst with
      | head :: tail -> head :: take (n - 1) tail
      | [] -> []
  in
  take n (Array.of_list heap)

(* === Turn 5 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:23:3: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec heap_queue_largest (nums : int list) (n : int) : int list = 
  let rec build_heap lst =
    let rec loop i =
      if i > 0 then
        let parent = (i - 1) / 2 in
        if lst.(i) > lst.(parent) then begin
          let tmp = lst.(i) in
          lst.(i) <- lst.(parent);
          lst.(parent) <- tmp;
          loop parent
        end else
          i
    in
    let rec insert n lst =
      if n = 0 then lst else
        let i = Array.length lst in
        Array.set lst i n;
        let j = loop i in
        insert (n - 1) (Array.sub lst 0 (i + 1))
    in
    insert (Array.length lst) lst

  let heap = build_heap (Array.of_list nums) in
  let rec heap_pop lst =
    if Array.length lst = 0 then [] else
      let max = lst.(0) in
      let last = Array.length lst - 1 in
      Array.set lst 0 lst.(last);
      Array.blit lst 1 lst 0 last;
      let i = 0 in
      let rec fix j =
        let left = 2 * j + 1 in
        let right = 2 * j + 2 in
        if left >= last && right >= last then
          j
        else if left >= last then
          if lst.(j) < lst.(left) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(left);
            lst.(left) <- tmp;
            fix left
          end else
            j
        else if right >= last then
          if lst.(j) < lst.(right) then begin
            let tmp = lst.(j) in
            lst.(j) <- lst.(right);
            lst.(right) <- tmp;
            fix right
          end else
            j
        else
          if lst.(j) < lst.(left) && lst.(j) < lst.(right) then begin
            if lst.(left) >= lst.(right) then begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(left);
              lst.(left) <- tmp;
              fix left
            end else begin
              let tmp = lst.(j) in
              lst.(j) <- lst.(right);
              lst.(right) <- tmp;
              fix right
            end
          end else
            j
      in
      let j = fix i in
      max :: heap_pop (Array.sub lst 0 j)
  in
  let rec take n lst =
    if n <= 0 then [] else
      match heap_pop lst with
      | head :: tail -> head :: take (n - 1) tail
      | [] -> []
  in
  take n (Array.to_list heap)

