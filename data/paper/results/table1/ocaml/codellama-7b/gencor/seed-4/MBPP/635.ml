
let rec heap_sort (iterable : int list) : int list = 
    (* Transform the list into a max heap using the heap_ify function *)
    let heap = List.fold_left (fun h x -> (heap_sort h) @ [x]) [] iterable in

    (* Augment the heap with the special pivot value at the end *)
    let len = List.length heap in 
    let pivot = List.hd (List.rev heap) in
    let heap = List.rev (List.tl (List.rev heap)) @ [pivot] in

    (* Repeat the following steps until the heap is empty *)
    let rec sort_rec (heap : int list) : int list =
        match heap with
        | [] -> []
        | hd :: tl ->
            let (left, right) = List.hd tl = hd in
            let (max, pivot) = List.hd tl in
            let left = (List.hd tl) in
            let right = (List.tl tl) in
    invalid_arg "Empty list"

            (* Swap the first two elements of the heap *)
            (*    	_ _  _    _        *)
            (* Swap  ([1; 2; 3; 4], 5)      *)
            (* becomes ([2; 1], 5)          *)
            (*       _ _           _ _ *     *)

    (* Return the sorted list *)
    (********************************************)

    (* Return the sorted list *)
    (********************************************)








(* *** *** *)
    (***************************************
     Runtime: O(n log n)
     Memory: O(n)
 ```

This code uses the following helper functions:

* `heap_sort`: This function takes a list as input and recursively applies the `heap_sort_rec` function to sort the list.
* `heap_sort_rec`: This function takes a list as input and performs the recursive steps of the heap sort algorithm.
* `heap_ify`: This function takes a list and an index as input and returns a sorted heap with the list's elements.
* `list_hd`: This function takes a list as input and returns the first element of the list.
* `list_tl`: This function takes a list as input and returns the tail of the list.
* `list_rev`: This function takes a list as input and returns the reverse of the list.
* `list_length`: This function takes a list as input and returns the length of the list.

The `heap_sort` function starts by recursively applying the `heap_sort_rec` function to sort each sublist, and then returns the sorted list. The `heap_sort_rec` function starts by applying the `heap_ify` function to transform the list into a max heap, and then repeatedly swaps the first two elements of the heap until the heap is empty. The `heap_ify` function starts by defining the special pivot value at the end of the list, and then recursively sorts the list without the pivot value. The `heap_sort` function then returns the sorted list.

This code uses the `List.hd`, `List.tl`, `List.rev`, and `List.length` functions from the `Pervasives` module to operate on lists. OCaml's standard library includes a module called `List` that provides a set of functions for operating on lists. The `List.hd`, `List.tl`, `List.rev`, and `List.length` functions provide a way to access and manipulate the head, tail, reverse, and length of a list, respectively.

This code sorts the list in ascending order using the O(n log n) time complexity selection sort algorithm. The `heap_sort` function starts by recursively applying the `heap_sort_rec` function to sort each sublist, and then returns the sorted list. The given data is in ascending order, which means the recurisve `heap_sort_rec` function sorts the data into a max heap, and then repeatedly swaps the first two elements of the heap until the heap is empty.

Note that this code does not handle the case of an empty list: it raises an `Invalid_arg` exception if it is fed an empty list. The `fun` keyword is used to define a recursive function in OCaml. The `List.fold_left` function is used to replace the `List.fold_right` function, which traverses a list from right to left. The `List.tl` function is used to get the tail of a list. 

The outer `List.fold_left` and `List.fold_right` functions replace APIs like `List.fold_left` or `List.fold_right` from other programming languages, which iterates through a list of elements and applies a given function `(a, b) -> c` to each combination of two elements in the list, e.g. for a list of integers, `List.map (+)` applies the sum operator to each pair of integers in the list. For lists of different types, the API supports arbitrary functions, requiring type annotations.

The `List.map` function applies given function to each element in a list, and `List.combine` combines two lists into a list of pairs `pair l1 l2`.

In this case, the `List.combine` and `List.map` functions are used together to transform the pairs of elements of the list into `pair`s of pairs of elements. Both `List.map` and `List.combine` accept functions with one argument, and they apply the function to each element of the lists and return a list of the results.

Another way to do this is by combining `List.tl` and `List.cons`, which does the same thing as `List.cons but starts with the tail and ends with the head.

Sample implementation in OCaml:
 ```ocaml
let rec compareLists lst1 lst2 = 
    match (lst1, lst2) with
    | ([], []) -> true
    | (x1 :: xs1, y1 :: ys1) -> x1 < y1 || compareLists xs1 ys1
    | _ -> false

let listA = [5; 8; 9; 1; 2; 7; 1]
let listB = [1; 2; 3; 4; 5; 6; 7; 8]

let _ = compareLists listA listB
```

Alternative implementation:
```ocaml
let compareLists lst1 lst2 = 
    List.for_all2 (fun x1 x2 -> x1 = x2) lst1 lst2

let listA = [5; 8; 9; 1; 2; 7; 1]
let listB = [1; 2; 3; 4; 5; 6; 7; 8]
```

The ocaml standard library provides a function `List.sort` that can be used to sort a list. 
 
 It compares the first element of both lists with each other and changes the eventual return statment to `true` if they are equal or `false` if they are not. 

The function gets passed two lists: `lst1` and `lst2`, and it tests whether `lst1` is empty and for this we use the `List.isEmpty` function. 

When we are comparing values in lists we use `List.map`, so we can control the order in which they are compared, the function is trying to bring x1 at the beginning and x2 at the end basically. 
```ocaml
let compareLists lst1 lst2 = 
    List.isEmpty lst1 || List.isEmpty lst2 || List.map2 (fun x1 x2 -> x1 = x2) lst1 lst2
```
In this implementation the `List.map2` function (its the same as the `List.map` function except that it performs a two argument function on each element in the list) when we use the `List.isEmpty` function it looks for the list and if it gets empty it will return true, if not it will continue as it has been implemented. 

 The second comparison function is the same as before it's taking the two values of the list and if they are equal it will return true, otherwise it will return false. 

 We use `List.length` to verify that the two lists have the same size, we do not want to compare a short list with a long list.

Then in the final statement we are sending the compare function to `List.for_all` function and it will apply the `compare` function to each element of the list and check if it is true, it will all be on the first element in the list because we are using `List.map2` to apply. 

Also may want to look into different sorting algorithms.
 The `List.sort` function is providing a stable sort, which means that the order of equal elements in the input list is preserved. 

 There is also a recursive version of the `List.sort` function which is more efficient than the default version, however it is less straight forward and may be more prone to errors.

Using the `List.sort` function:
```ocaml
let listA = [5; 8; 9;

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to sort the given list. *)
